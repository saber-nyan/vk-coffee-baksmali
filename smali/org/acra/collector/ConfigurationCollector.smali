.class public final Lorg/acra/collector/ConfigurationCollector;
.super Ljava/lang/Object;
.source "ConfigurationCollector.java"


# static fields
.field private static final FIELD_MCC:Ljava/lang/String; = "mcc"

.field private static final FIELD_MNC:Ljava/lang/String; = "mnc"

.field private static final FIELD_SCREENLAYOUT:Ljava/lang/String; = "screenLayout"

.field private static final FIELD_UIMODE:Ljava/lang/String; = "uiMode"

.field private static final PREFIX_HARDKEYBOARDHIDDEN:Ljava/lang/String; = "HARDKEYBOARDHIDDEN_"

.field private static final PREFIX_KEYBOARD:Ljava/lang/String; = "KEYBOARD_"

.field private static final PREFIX_KEYBOARDHIDDEN:Ljava/lang/String; = "KEYBOARDHIDDEN_"

.field private static final PREFIX_NAVIGATION:Ljava/lang/String; = "NAVIGATION_"

.field private static final PREFIX_NAVIGATIONHIDDEN:Ljava/lang/String; = "NAVIGATIONHIDDEN_"

.field private static final PREFIX_ORIENTATION:Ljava/lang/String; = "ORIENTATION_"

.field private static final PREFIX_SCREENLAYOUT:Ljava/lang/String; = "SCREENLAYOUT_"

.field private static final PREFIX_TOUCHSCREEN:Ljava/lang/String; = "TOUCHSCREEN_"

.field private static final PREFIX_UI_MODE:Ljava/lang/String; = "UI_MODE_"

.field private static final SUFFIX_MASK:Ljava/lang/String; = "_MASK"


# instance fields
.field private final mValueArrays:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 21

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    .line 62
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 63
    .local v7, "hardKeyboardHiddenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .local v10, "keyboardValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 65
    .local v9, "keyboardHiddenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 66
    .local v13, "navigationValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .local v12, "navigationHiddenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .local v14, "orientationValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .local v15, "screenLayoutValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 70
    .local v16, "touchScreenValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 72
    .local v17, "uiModeValues":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-class v18, Landroid/content/res/Configuration;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v11, :cond_9

    aget-object v5, v3, v8

    .line 73
    .local v5, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 74
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "fieldName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v18, "HARDKEYBOARDHIDDEN_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 77
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v7, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .end local v6    # "fieldName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 78
    .restart local v6    # "fieldName":Ljava/lang/String;
    :cond_1
    const-string/jumbo v18, "KEYBOARD_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 79
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 95
    :catch_0
    move-exception v4

    .line 96
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "Error while inspecting device configuration: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v4}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 80
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_1
    const-string/jumbo v18, "KEYBOARDHIDDEN_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 81
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 97
    :catch_1
    move-exception v4

    .line 98
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v18, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v19, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v20, "Error while inspecting device configuration: "

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v4}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 82
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    :try_start_2
    const-string/jumbo v18, "NAVIGATION_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 83
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 84
    :cond_4
    const-string/jumbo v18, "NAVIGATIONHIDDEN_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 85
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 86
    :cond_5
    const-string/jumbo v18, "ORIENTATION_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 87
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 88
    :cond_6
    const-string/jumbo v18, "SCREENLAYOUT_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 89
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 90
    :cond_7
    const-string/jumbo v18, "TOUCHSCREEN_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 91
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 92
    :cond_8
    const-string/jumbo v18, "UI_MODE_"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 93
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 103
    .end local v5    # "f":Ljava/lang/reflect/Field;
    .end local v6    # "fieldName":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "HARDKEYBOARDHIDDEN_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "KEYBOARD_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "KEYBOARDHIDDEN_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "NAVIGATION_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "NAVIGATIONHIDDEN_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "ORIENTATION_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "SCREENLAYOUT_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "TOUCHSCREEN_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    move-object/from16 v18, v0

    const-string/jumbo v19, "UI_MODE_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method private static activeFlags(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 6
    .param p1, "bitfield"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "valueNames":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 203
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 204
    .local v1, "maskValue":I
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "_MASK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    and-int v3, p1, v1

    .line 206
    .local v3, "value":I
    if-lez v3, :cond_1

    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 208
    const/16 v4, 0x2b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .end local v3    # "value":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "maskValue":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static collectConfiguration(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    :try_start_0
    new-instance v0, Lorg/acra/collector/ConfigurationCollector;

    invoke-direct {v0}, Lorg/acra/collector/ConfigurationCollector;-><init>()V

    .line 226
    .local v0, "collector":Lorg/acra/collector/ConfigurationCollector;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 227
    .local v1, "crashConf":Landroid/content/res/Configuration;
    invoke-direct {v0, v1}, Lorg/acra/collector/ConfigurationCollector;->toString(Landroid/content/res/Configuration;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 230
    .end local v0    # "collector":Lorg/acra/collector/ConfigurationCollector;
    .end local v1    # "crashConf":Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Couldn\'t retrieve CrashConfiguration for : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    const-string/jumbo v3, "Couldn\'t retrieve crash config"

    goto :goto_0
.end method

.method private getFieldValueName(Landroid/content/res/Configuration;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 6
    .param p1, "conf"    # Landroid/content/res/Configuration;
    .param p2, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "fieldName":Ljava/lang/String;
    const-string/jumbo v3, "mcc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "mnc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    :cond_1
    :goto_0
    return-object v1

    .line 165
    :cond_2
    const-string/jumbo v3, "uiMode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    iget-object v3, p0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    const-string/jumbo v4, "UI_MODE_"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/acra/collector/ConfigurationCollector;->activeFlags(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 167
    :cond_3
    const-string/jumbo v3, "screenLayout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    const-string/jumbo v4, "SCREENLAYOUT_"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lorg/acra/collector/ConfigurationCollector;->activeFlags(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 170
    :cond_4
    iget-object v3, p0, Lorg/acra/collector/ConfigurationCollector;->mValueArrays:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 171
    .local v2, "values":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez v2, :cond_5

    .line 173
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 176
    :cond_5
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 179
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private toString(Landroid/content/res/Configuration;)Ljava/lang/String;
    .locals 10
    .param p1, "conf"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v6, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 127
    .local v2, "f":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 128
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 131
    invoke-direct {p0, p1, v2}, Lorg/acra/collector/ConfigurationCollector;->getFieldValueName(Landroid/content/res/Configuration;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    :goto_1
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 132
    .restart local v3    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 133
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 137
    .end local v3    # "fieldName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v7, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Error while inspecting device configuration: "

    invoke-interface {v7, v8, v9, v1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 139
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v8, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Error while inspecting device configuration: "

    invoke-interface {v7, v8, v9, v1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 143
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "f":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
