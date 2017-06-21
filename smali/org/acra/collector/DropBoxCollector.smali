.class final Lorg/acra/collector/DropBoxCollector;
.super Ljava/lang/Object;
.source "DropBoxCollector.java"


# static fields
.field private static final NO_RESULT:Ljava/lang/String; = "N/A"

.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "system_app_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "system_app_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "system_app_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "system_server_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "system_server_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "system_server_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "BATTERY_DISCHARGE_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "SYSTEM_RECOVERY_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "SYSTEM_BOOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "SYSTEM_LAST_KMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "APANIC_CONSOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "APANIC_THREADS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "SYSTEM_RESTART"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "SYSTEM_TOMBSTONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "data_app_strictmode"

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "additionalTags"    # [Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Lorg/acra/collector/Compatibility;->getDropBoxServiceName()Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, "serviceName":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 65
    const-string/jumbo v22, "N/A"

    .line 134
    .end local v13    # "serviceName":Ljava/lang/String;
    :goto_0
    return-object v22

    .line 68
    .restart local v13    # "serviceName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 69
    .local v5, "dropbox":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "getNextEntry"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/String;

    aput-object v26, v24, v25

    const/16 v25, 0x1

    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 70
    .local v9, "getNextEntry":Ljava/lang/reflect/Method;
    if-nez v9, :cond_1

    .line 71
    const-string/jumbo v22, ""

    goto :goto_0

    .line 74
    :cond_1
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 75
    .local v19, "timer":Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 76
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/acra/ACRAConfiguration;->dropboxCollectionMinutes()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 77
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 78
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 80
    .local v20, "time":J
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v17, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lorg/acra/ACRAConfiguration;->includeDropBoxSystemTags()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 82
    sget-object v22, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 84
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_3

    .line 85
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 89
    const-string/jumbo v22, "No tag configured for collection."

    goto/16 :goto_0

    .line 92
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v6, "dropboxContent":Ljava/lang/StringBuilder;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 94
    .local v16, "tag":Ljava/lang/String;
    const-string/jumbo v22, "Tag: "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 96
    .local v8, "entry":Ljava/lang/Object;
    if-nez v8, :cond_6

    .line 97
    const-string/jumbo v22, "Nothing."

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    .line 120
    .end local v5    # "dropbox":Ljava/lang/Object;
    .end local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "timer":Landroid/text/format/Time;
    .end local v20    # "time":J
    :catch_0
    move-exception v7

    .line 121
    .local v7, "e":Ljava/lang/SecurityException;
    sget-object v22, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v23, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "DropBoxManager not available."

    invoke-interface/range {v22 .. v24}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .end local v7    # "e":Ljava/lang/SecurityException;
    :goto_2
    const-string/jumbo v22, "N/A"

    goto/16 :goto_0

    .line 101
    .restart local v5    # "dropbox":Ljava/lang/Object;
    .restart local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v8    # "entry":Ljava/lang/Object;
    .restart local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "serviceName":Ljava/lang/String;
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "timer":Landroid/text/format/Time;
    .restart local v20    # "time":J
    :cond_6
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "getText"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 102
    .local v10, "getText":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v24, "getTimeMillis"

    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 103
    .local v11, "getTimeMillis":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string/jumbo v24, "close"

    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 104
    .local v4, "close":Ljava/lang/reflect/Method;
    :goto_3
    if-eqz v8, :cond_5

    .line 105
    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 106
    .local v14, "msec":J
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 107
    const-string/jumbo v22, "@"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 108
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1f4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v10, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 109
    .local v18, "text":Ljava/lang/String;
    if-eqz v18, :cond_7

    .line 110
    const-string/jumbo v22, "Text: "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    :goto_4
    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 116
    goto/16 :goto_3

    .line 112
    :cond_7
    const-string/jumbo v22, "Not Text!"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_4

    .line 122
    .end local v4    # "close":Ljava/lang/reflect/Method;
    .end local v5    # "dropbox":Ljava/lang/Object;
    .end local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v10    # "getText":Ljava/lang/reflect/Method;
    .end local v11    # "getTimeMillis":Ljava/lang/reflect/Method;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "msec":J
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "timer":Landroid/text/format/Time;
    .end local v20    # "time":J
    :catch_1
    move-exception v7

    .line 123
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    sget-object v22, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v23, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "DropBoxManager not available."

    invoke-interface/range {v22 .. v24}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 118
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "dropbox":Ljava/lang/Object;
    .restart local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "serviceName":Ljava/lang/String;
    .restart local v17    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "timer":Landroid/text/format/Time;
    .restart local v20    # "time":J
    :cond_8
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v22

    goto/16 :goto_0

    .line 124
    .end local v5    # "dropbox":Ljava/lang/Object;
    .end local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v17    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "timer":Landroid/text/format/Time;
    .end local v20    # "time":J
    :catch_2
    move-exception v7

    .line 125
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    sget-object v22, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v23, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "DropBoxManager not available."

    invoke-interface/range {v22 .. v24}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 127
    .local v7, "e":Ljava/lang/IllegalAccessException;
    sget-object v22, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v23, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "DropBoxManager not available."

    invoke-interface/range {v22 .. v24}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 128
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v7

    .line 129
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v22, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v23, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "DropBoxManager not available."

    invoke-interface/range {v22 .. v24}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 130
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v7

    .line 131
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    sget-object v22, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v23, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v24, "DropBoxManager not available."

    invoke-interface/range {v22 .. v24}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
