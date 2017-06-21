.class public Lcom/vkcoffee/android/data/database/Country;
.super Ljava/lang/Object;
.source "Country.java"


# instance fields
.field public code:Ljava/lang/String;

.field public id:I

.field public important:Z

.field public name:Ljava/lang/String;

.field public phoneCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCountries(ZZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .param p0, "unique"    # Z
    .param p1, "includeNone"    # Z
    .param p2, "noneTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/database/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v10, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/data/database/Country;>;"
    :try_start_0
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string/jumbo v18, "usercountry"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 22
    .local v13, "userCountry":I
    const/4 v14, 0x0

    .line 23
    .local v14, "userCountryCode":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 24
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 25
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 26
    .local v11, "simCountry":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 27
    move-object v14, v11

    .line 32
    .end local v11    # "simCountry":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    const/4 v15, 0x1

    .line 33
    .local v15, "userCountryPos":I
    :goto_1
    if-eqz p1, :cond_1

    .line 34
    new-instance v9, Lcom/vkcoffee/android/data/database/Country;

    invoke-direct {v9}, Lcom/vkcoffee/android/data/database/Country;-><init>()V

    .line 35
    .local v9, "none":Lcom/vkcoffee/android/data/database/Country;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v9, Lcom/vkcoffee/android/data/database/Country;->id:I

    .line 36
    if-eqz p2, :cond_7

    .end local p2    # "noneTitle":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p2

    iput-object v0, v9, Lcom/vkcoffee/android/data/database/Country;->name:Ljava/lang/String;

    .line 37
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .end local v9    # "none":Lcom/vkcoffee/android/data/database/Country;
    :cond_1
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "countries_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ".txt"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 40
    .local v5, "in":Ljava/io/InputStream;
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 41
    .local v4, "file":[B
    invoke-virtual {v5, v4}, Ljava/io/InputStream;->read([B)I

    .line 42
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 43
    new-instance v17, Ljava/lang/String;

    const-string/jumbo v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, "lines":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v3, "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v0, v8

    move/from16 v18, v0

    const/16 v17, 0x0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    aget-object v7, v8, v17

    .line 46
    .local v7, "line":Ljava/lang/String;
    const-string/jumbo v19, ","

    const/16 v20, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 47
    .local v6, "info":[Ljava/lang/String;
    new-instance v2, Lcom/vkcoffee/android/data/database/Country;

    invoke-direct {v2}, Lcom/vkcoffee/android/data/database/Country;-><init>()V

    .line 48
    .local v2, "c":Lcom/vkcoffee/android/data/database/Country;
    const/16 v19, 0x1

    aget-object v19, v6, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    iput v0, v2, Lcom/vkcoffee/android/data/database/Country;->id:I

    .line 49
    const/16 v19, 0x2

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/vkcoffee/android/data/database/Country;->code:Ljava/lang/String;

    .line 50
    const/16 v19, 0x3

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/vkcoffee/android/data/database/Country;->name:Ljava/lang/String;

    .line 51
    const/16 v19, 0x0

    aget-object v19, v6, v19

    move-object/from16 v0, v19

    iput-object v0, v2, Lcom/vkcoffee/android/data/database/Country;->phoneCode:Ljava/lang/String;

    .line 52
    if-eqz p0, :cond_2

    iget-object v0, v2, Lcom/vkcoffee/android/data/database/Country;->code:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 53
    :cond_2
    iget v0, v2, Lcom/vkcoffee/android/data/database/Country;->id:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v13, :cond_3

    if-eqz v14, :cond_8

    iget-object v0, v2, Lcom/vkcoffee/android/data/database/Country;->code:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 54
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v2, Lcom/vkcoffee/android/data/database/Country;->important:Z

    .line 55
    invoke-virtual {v10, v15, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 45
    :cond_4
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 29
    .end local v2    # "c":Lcom/vkcoffee/android/data/database/Country;
    .end local v3    # "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "file":[B
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v15    # "userCountryPos":I
    .restart local v11    # "simCountry":Ljava/lang/String;
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    .restart local p2    # "noneTitle":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 32
    .end local v11    # "simCountry":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 36
    .restart local v9    # "none":Lcom/vkcoffee/android/data/database/Country;
    .restart local v15    # "userCountryPos":I
    :cond_7
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080302

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_2

    .line 57
    .end local v9    # "none":Lcom/vkcoffee/android/data/database/Country;
    .end local p2    # "noneTitle":Ljava/lang/String;
    .restart local v2    # "c":Lcom/vkcoffee/android/data/database/Country;
    .restart local v3    # "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v4    # "file":[B
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "info":[Ljava/lang/String;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lines":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 61
    .end local v2    # "c":Lcom/vkcoffee/android/data/database/Country;
    .end local v3    # "codes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "file":[B
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "info":[Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v13    # "userCountry":I
    .end local v14    # "userCountryCode":Ljava/lang/String;
    .end local v15    # "userCountryPos":I
    :catch_0
    move-exception v16

    .line 62
    .local v16, "x":Ljava/lang/Exception;
    const-string/jumbo v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v16    # "x":Ljava/lang/Exception;
    :cond_9
    return-object v10
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vkcoffee/android/data/database/Country;->name:Ljava/lang/String;

    return-object v0
.end method
