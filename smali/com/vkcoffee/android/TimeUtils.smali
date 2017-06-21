.class public Lcom/vkcoffee/android/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final DAY:J = 0x5265c00L

.field public static final HOUR:J = 0x36ee80L

.field public static final MIN:J = 0xea60L

.field public static final MONTH:J = 0x9a7ec800L

.field public static final PERIODS:[J

.field public static final SEC:J = 0x3e8L

.field public static final WEEK:J = 0x240c8400L

.field public static final YEAR:J = 0x757b12c00L

.field private static customTimeZone:Ljava/util/TimeZone;

.field private static diff:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 25
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "custom_timezone"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 26
    .local v1, "tz":F
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "time_diff"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, "diff":I
    invoke-static {v1, v0}, Lcom/vkcoffee/android/TimeUtils;->setCustomTimeZone(FI)V

    .line 57
    const/4 v2, 0x7

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    sput-object v2, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x3e8
        0xea60
        0x36ee80
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAge(III)I
    .locals 6
    .param p0, "bDay"    # I
    .param p1, "bMonth"    # I
    .param p2, "bYear"    # I

    .prologue
    .line 263
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 264
    .local v0, "c":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 265
    .local v2, "now":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 266
    .local v1, "c2":Ljava/util/Calendar;
    const/4 v4, 0x5

    invoke-virtual {v1, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 267
    const/4 v4, 0x2

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 268
    sub-int v3, v2, p2

    .line 269
    .local v3, "years":I
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    add-int/lit8 v3, v3, -0x1

    .line 272
    :cond_0
    return v3
.end method

.method public static getCalendar()Ljava/util/Calendar;
    .locals 6

    .prologue
    .line 41
    sget-object v1, Lcom/vkcoffee/android/TimeUtils;->customTimeZone:Ljava/util/TimeZone;

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Lcom/vkcoffee/android/TimeUtils;->customTimeZone:Ljava/util/TimeZone;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 46
    .end local v0    # "cal":Ljava/util/Calendar;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentTime()I
    .locals 6

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 219
    .local v0, "rawUnixTime":I
    sget-object v1, Lcom/vkcoffee/android/TimeUtils;->customTimeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_0

    .line 222
    .end local v0    # "rawUnixTime":I
    :goto_0
    return v0

    .restart local v0    # "rawUnixTime":I
    :cond_0
    sget v1, Lcom/vkcoffee/android/TimeUtils;->diff:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getOffset()I
    .locals 1

    .prologue
    .line 226
    sget v0, Lcom/vkcoffee/android/TimeUtils;->diff:I

    neg-int v0, v0

    return v0
.end method

.method public static langDate(I)Ljava/lang/String;
    .locals 1
    .param p0, "_dt"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vkcoffee/android/TimeUtils;->langDate(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static langDate(IZ)Ljava/lang/String;
    .locals 18
    .param p0, "_dt"    # I
    .param p1, "forceShortMonth"    # Z

    .prologue
    .line 78
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 79
    .local v10, "res":Landroid/content/res/Resources;
    move/from16 v0, p0

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long v6, v12, v14

    .line 80
    .local v6, "dt":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    .line 81
    .local v8, "now":Ljava/util/Calendar;
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 82
    .local v3, "ds":Ljava/util/Calendar;
    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 83
    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 84
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 85
    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 86
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 87
    .local v4, "daystart":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    .line 88
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    const-string/jumbo v9, ""

    .line 90
    .local v9, "r":Ljava/lang/String;
    cmp-long v11, v4, v6

    if-gez v11, :cond_1

    const-wide/32 v12, 0x5265c00

    add-long/2addr v12, v4

    cmp-long v11, v12, v6

    if-ltz v11, :cond_1

    .line 91
    const-string/jumbo v12, "%s %s %d:%02d"

    const/4 v11, 0x4

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v14, 0x7f080545

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v14, 0x1

    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_0

    const v11, 0x7f0805c7

    :goto_0
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v14

    const/4 v11, 0x2

    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v11, 0x3

    const/16 v14, 0xc

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 104
    :goto_1
    return-object v9

    .line 91
    :cond_0
    const v11, 0x7f080116

    goto :goto_0

    .line 92
    :cond_1
    const-wide/32 v12, 0x5265c00

    add-long/2addr v12, v4

    cmp-long v11, v12, v6

    if-gez v11, :cond_3

    const-wide/32 v12, 0xa4cb800

    add-long/2addr v12, v4

    cmp-long v11, v12, v6

    if-lez v11, :cond_3

    .line 93
    const-string/jumbo v12, "%s %s %d:%02d"

    const/4 v11, 0x4

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v14, 0x7f080548

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v14, 0x1

    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_2

    const v11, 0x7f0805c7

    :goto_2
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v14

    const/4 v11, 0x2

    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v11, 0x3

    const/16 v14, 0xc

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    const v11, 0x7f080116

    goto :goto_2

    .line 94
    :cond_3
    const-wide/32 v12, 0x5265c00

    sub-long v12, v4, v12

    cmp-long v11, v12, v6

    if-gez v11, :cond_5

    cmp-long v11, v4, v6

    if-ltz v11, :cond_5

    .line 95
    const-string/jumbo v12, "%s %s %d:%02d"

    const/4 v11, 0x4

    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const v14, 0x7f0805c1

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v14, 0x1

    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v15, 0x1

    if-ne v11, v15, :cond_4

    const v11, 0x7f0805c7

    :goto_3
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v13, v14

    const/4 v11, 0x2

    const/16 v14, 0xb

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    const/4 v11, 0x3

    const/16 v14, 0xc

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    :cond_4
    const v11, 0x7f080116

    goto :goto_3

    .line 97
    :cond_5
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-eq v11, v12, :cond_6

    .line 98
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f080118

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const v15, 0x7f0d001a

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0xb

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v10, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 102
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " %s %d:%02d"

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_8

    const v11, 0x7f0805c7

    :goto_5
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v14, v15

    const/4 v11, 0x1

    const/16 v15, 0xb

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v11, 0x2

    const/16 v15, 0xc

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 100
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f080117

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x1

    if-eqz p1, :cond_7

    const v11, 0x7f0d001a

    :goto_6
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0xb

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    aget-object v11, v11, v16

    aput-object v11, v14, v15

    invoke-virtual {v10, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    :cond_7
    const v11, 0x7f0d0019

    goto :goto_6

    .line 102
    :cond_8
    const v11, 0x7f080116

    goto :goto_5
.end method

.method public static langDateDay(I)Ljava/lang/String;
    .locals 15
    .param p0, "_dt"    # I

    .prologue
    .line 137
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 138
    .local v8, "res":Landroid/content/res/Resources;
    int-to-long v10, p0

    const-wide/16 v12, 0x3e8

    mul-long v4, v10, v12

    .line 139
    .local v4, "dt":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    .line 140
    .local v6, "now":Ljava/util/Calendar;
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 141
    .local v1, "ds":Ljava/util/Calendar;
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 142
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 143
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 144
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 146
    .local v2, "daystart":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 148
    const-string/jumbo v7, ""

    .line 149
    .local v7, "r":Ljava/lang/String;
    cmp-long v9, v2, v4

    if-gez v9, :cond_0

    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v2

    cmp-long v9, v10, v4

    if-ltz v9, :cond_0

    .line 150
    const v9, 0x7f080545

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    :goto_0
    return-object v7

    .line 151
    :cond_0
    const-wide/32 v10, 0x5265c00

    add-long/2addr v10, v2

    cmp-long v9, v10, v4

    if-gez v9, :cond_1

    const-wide/32 v10, 0xa4cb800

    add-long/2addr v10, v2

    cmp-long v9, v10, v4

    if-lez v9, :cond_1

    .line 152
    const v9, 0x7f080548

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 153
    :cond_1
    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    cmp-long v9, v10, v4

    if-gez v9, :cond_2

    cmp-long v9, v2, v4

    if-ltz v9, :cond_2

    .line 154
    const v9, 0x7f0805c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 155
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 156
    const v9, 0x7f080118

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0d001a

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xb

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 158
    :cond_3
    const v9, 0x7f080117

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0d0019

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xb

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "dt"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v3, 0x7f0d0005

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 164
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v1

    .line 165
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 166
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 167
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    :goto_0
    return-object v2

    .line 169
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    .line 170
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 172
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    .line 173
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    goto :goto_0

    .line 175
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    .line 176
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    goto :goto_0

    .line 178
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    .line 179
    const v2, 0x7f0e0009

    div-int/lit8 v3, v0, 0x3c

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 181
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    .line 182
    const v2, 0x7f080115

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 184
    :cond_6
    const v2, 0x7f0e000a

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static langDateRelativeNoDiff(ILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 7
    .param p0, "dt"    # I
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    const v3, 0x7f0d0005

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 188
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v1

    .line 189
    .local v1, "now":I
    sub-int v0, v1, p0

    .line 190
    .local v0, "diff":I
    const/16 v2, 0x3840

    if-ge v0, v2, :cond_0

    if-gez v0, :cond_1

    .line 191
    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/TimeUtils;->langDate(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    :goto_0
    return-object v2

    .line 193
    :cond_1
    const/16 v2, 0x2a30

    if-lt v0, v2, :cond_2

    .line 194
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    goto :goto_0

    .line 196
    :cond_2
    const/16 v2, 0x1c20

    if-lt v0, v2, :cond_3

    .line 197
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    goto :goto_0

    .line 199
    :cond_3
    const/16 v2, 0xe10

    if-lt v0, v2, :cond_4

    .line 200
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    goto :goto_0

    .line 202
    :cond_4
    const/16 v2, 0x3c

    if-lt v0, v2, :cond_5

    .line 203
    const v2, 0x7f0e0009

    div-int/lit8 v3, v0, 0x3c

    new-array v4, v4, [Ljava/lang/Object;

    div-int/lit8 v5, v0, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 205
    :cond_5
    const/16 v2, 0xa

    if-gt v0, v2, :cond_6

    .line 206
    const v2, 0x7f080115

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 208
    :cond_6
    const v2, 0x7f0e000a

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static langDateShort(I)Ljava/lang/String;
    .locals 15
    .param p0, "_dt"    # I

    .prologue
    .line 112
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 113
    .local v8, "res":Landroid/content/res/Resources;
    int-to-long v10, p0

    const-wide/16 v12, 0x3e8

    mul-long v4, v10, v12

    .line 114
    .local v4, "dt":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v6

    .line 115
    .local v6, "now":Ljava/util/Calendar;
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 116
    .local v1, "ds":Ljava/util/Calendar;
    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 118
    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 119
    const/16 v9, 0xe

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 121
    .local v2, "daystart":J
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    const-string/jumbo v7, ""

    .line 124
    .local v7, "r":Ljava/lang/String;
    cmp-long v9, v2, v4

    if-gez v9, :cond_0

    .line 125
    const-string/jumbo v9, "%d:%02d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/16 v12, 0xb

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/16 v12, 0xc

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 133
    :goto_0
    return-object v7

    .line 126
    :cond_0
    const-wide/32 v10, 0x5265c00

    sub-long v10, v2, v10

    cmp-long v9, v10, v4

    if-gez v9, :cond_1

    cmp-long v9, v2, v4

    if-ltz v9, :cond_1

    .line 127
    const v9, 0x7f0805c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 128
    :cond_1
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v9, v10, :cond_2

    .line 129
    const v9, 0x7f080118

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0d001a

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xb

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 131
    :cond_2
    const v9, 0x7f080117

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const v12, 0x7f0d001a

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    const/16 v14, 0xb

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static resyncOffset()V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "getServerTime"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/TimeUtils$1;

    invoke-direct {v1}, Lcom/vkcoffee/android/TimeUtils$1;-><init>()V

    .line 244
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 260
    return-void
.end method

.method public static setCustomTimeZone(FI)V
    .locals 9
    .param p0, "offset"    # F
    .param p1, "diff"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x42700000    # 60.0f

    .line 31
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    .line 32
    sput-object v8, Lcom/vkcoffee/android/TimeUtils;->customTimeZone:Ljava/util/TimeZone;

    .line 36
    :goto_0
    sput p1, Lcom/vkcoffee/android/TimeUtils;->diff:I

    .line 37
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "custom_timezone"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "time_diff"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/high16 v1, 0x45610000    # 3600.0f

    mul-float/2addr v1, p0

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string/jumbo v2, "Custom %d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    float-to-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x1

    mul-float v5, p0, v6

    rem-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/vkcoffee/android/TimeUtils;->customTimeZone:Ljava/util/TimeZone;

    goto :goto_0
.end method

.method public static setServerTime(I)V
    .locals 9
    .param p0, "serverTime"    # I

    .prologue
    const/high16 v8, 0x45610000    # 3600.0f

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 231
    .local v1, "localTime":I
    sub-int v4, p0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x708

    if-le v4, v5, :cond_0

    .line 232
    sub-int v4, v1, p0

    int-to-float v4, v4

    div-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, v4

    .line 233
    .local v0, "diffHours":F
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    div-float v2, v4, v8

    .line 234
    .local v2, "localTimeZone":F
    add-float v3, v2, v0

    .line 235
    .local v3, "offset":F
    mul-float v4, v0, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/TimeUtils;->setCustomTimeZone(FI)V

    .line 236
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Using custom timezone with offset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v0    # "diffHours":F
    .end local v2    # "localTimeZone":F
    .end local v3    # "offset":F
    :goto_0
    return-void

    .line 238
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/vkcoffee/android/TimeUtils;->setCustomTimeZone(FI)V

    goto :goto_0
.end method

.method public static shortDate(JLandroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "_dt"    # J
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "s":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p0

    sub-long p0, v4, v6

    .line 63
    sget-object v4, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 64
    sget-object v4, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    aget-wide v4, v4, v0

    cmp-long v4, p0, v4

    if-lez v4, :cond_1

    .line 65
    sget-object v4, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    aget-wide v4, v4, v0

    div-long v2, p0, v4

    .line 66
    .local v2, "time":J
    sget-object v4, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    const-wide/16 v4, 0x5

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 67
    sget-object v4, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    aget-wide v4, v4, v0

    div-long v4, p0, v4

    const-wide/16 v6, 0x7b2

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 74
    .end local v2    # "time":J
    :goto_1
    return-object v4

    .line 69
    .restart local v2    # "time":J
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/vkcoffee/android/TimeUtils;->PERIODS:[J

    aget-wide v6, v5, v0

    div-long v6, p0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 63
    .end local v2    # "time":J
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 74
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static time(I)Ljava/lang/String;
    .locals 6
    .param p0, "t"    # I

    .prologue
    .line 212
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    .local v0, "c":Ljava/util/Calendar;
    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 214
    const-string/jumbo v1, "%d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
