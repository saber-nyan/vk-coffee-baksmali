.class public Lcom/vkcoffee/android/api/execute/SearchGetHints;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "SearchGetHints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList",
        "<",
        "Lcom/vkcoffee/android/UserProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mNeedDomain:Z

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 2
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "needDomain"    # Z

    .prologue
    .line 24
    const-string/jumbo v0, "execute.searchHints"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/vkcoffee/android/api/execute/SearchGetHints;->mQuery:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "filters"

    const-string/jumbo v1, "mutual_friends,correspondents"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/execute/SearchGetHints;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    const-string/jumbo v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/execute/SearchGetHints;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 28
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/vkcoffee/android/api/execute/SearchGetHints;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 29
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/api/execute/SearchGetHints;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 30
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "photo_rec,photo_medium_rec,online,verified,screen_name,domain"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/execute/SearchGetHints;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 31
    iput-boolean p4, p0, Lcom/vkcoffee/android/api/execute/SearchGetHints;->mNeedDomain:Z

    .line 32
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;
    .locals 19
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v14, Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;

    invoke-direct {v14}, Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;-><init>()V

    .line 37
    .local v14, "result":Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;, "Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList<Lcom/vkcoffee/android/UserProfile;>;"
    :try_start_0
    const-string/jumbo v17, "response"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 38
    .local v13, "r":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 39
    .local v3, "foundDomain":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_6

    .line 40
    invoke-virtual {v13, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 41
    .local v5, "item":Lorg/json/JSONObject;
    new-instance v11, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v11}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 42
    .local v11, "profile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 43
    .local v15, "type":Ljava/lang/String;
    const-string/jumbo v17, "profile"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 44
    const-string/jumbo v17, "profile"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 45
    .local v7, "jp":Lorg/json/JSONObject;
    const-string/jumbo v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 46
    const-string/jumbo v17, "first_name"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 47
    const-string/jumbo v17, "last_name"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 48
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v11, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 49
    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_2

    const-string/jumbo v17, "photo_medium_rec"

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 50
    invoke-static {v7}, Lcom/vkcoffee/android/Global;->getUserOnlineStatus(Lorg/json/JSONObject;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Lcom/vkcoffee/android/UserProfile;->online:I

    .line 51
    const-string/jumbo v17, "verified"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    iput-boolean v0, v11, Lcom/vkcoffee/android/UserProfile;->verified:Z

    .line 52
    const-string/jumbo v17, "domain"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    .line 60
    .end local v7    # "jp":Lorg/json/JSONObject;
    :cond_0
    :goto_3
    iget-object v0, v11, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    iget-object v0, v11, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/execute/SearchGetHints;->mQuery:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 61
    const/4 v3, 0x1

    .line 63
    :cond_1
    const-string/jumbo v17, "description"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 64
    invoke-virtual {v14, v11}, Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 49
    .restart local v7    # "jp":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v17, "photo_rec"

    goto :goto_1

    .line 51
    :cond_3
    const/16 v17, 0x0

    goto :goto_2

    .line 53
    .end local v7    # "jp":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v17, "group"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 54
    const-string/jumbo v17, "group"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 55
    .local v6, "jg":Lorg/json/JSONObject;
    const-string/jumbo v17, "id"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v11, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 56
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 57
    sget v17, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v17, v17, v18

    if-lez v17, :cond_5

    const-string/jumbo v17, "photo_100"

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 58
    const-string/jumbo v17, "screen_name"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/vkcoffee/android/UserProfile;->domain:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 104
    .end local v3    # "foundDomain":Z
    .end local v4    # "i":I
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "jg":Lorg/json/JSONObject;
    .end local v11    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v13    # "r":Lorg/json/JSONArray;
    .end local v15    # "type":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 105
    .local v16, "x":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v16    # "x":Ljava/lang/Exception;
    :goto_5
    return-object v14

    .line 57
    .restart local v3    # "foundDomain":Z
    .restart local v4    # "i":I
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v6    # "jg":Lorg/json/JSONObject;
    .restart local v11    # "profile":Lcom/vkcoffee/android/UserProfile;
    .restart local v13    # "r":Lorg/json/JSONArray;
    .restart local v15    # "type":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v17, "photo_50"

    goto :goto_4

    .line 67
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v6    # "jg":Lorg/json/JSONObject;
    .end local v11    # "profile":Lcom/vkcoffee/android/UserProfile;
    .end local v15    # "type":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vkcoffee/android/api/execute/SearchGetHints;->mNeedDomain:Z

    move/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v17, :cond_7

    if-nez v3, :cond_7

    .line 70
    :try_start_2
    const-string/jumbo v17, "^(?:(?:http|https)://)?(?:vk\\.com|vkontakte\\.ru|new\\.vk\\.com)?/?([a-zA-Z0-9_\\.\\?=&%-]+)$"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 71
    .local v12, "ptn":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/execute/SearchGetHints;->mQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 72
    .local v9, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 74
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 75
    .local v8, "link":Ljava/lang/String;
    const-string/jumbo v17, "id[0-9]+"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string/jumbo v17, "club[0-9]+"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 76
    new-instance v10, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v10}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 77
    .local v10, "p":Lcom/vkcoffee/android/UserProfile;
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v18, 0x7f08007b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 78
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "vk.com/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 79
    invoke-virtual {v14, v10}, Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v12    # "ptn":Ljava/util/regex/Pattern;
    :cond_7
    :goto_6
    :try_start_3
    new-instance v2, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v2}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 99
    .local v2, "extSearchProfile":Lcom/vkcoffee/android/UserProfile;
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v18, 0x7f080524

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 100
    const v17, 0x7fffffff

    move/from16 v0, v17

    iput v0, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 101
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 102
    invoke-virtual {v14, v2}, Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_5

    .line 82
    .end local v2    # "extSearchProfile":Lcom/vkcoffee/android/UserProfile;
    .restart local v9    # "matcher":Ljava/util/regex/Matcher;
    .restart local v12    # "ptn":Ljava/util/regex/Pattern;
    :cond_8
    :try_start_4
    const-string/jumbo v17, "^@([a-zA-Z0-9_\\.-]+)$"

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/api/execute/SearchGetHints;->mQuery:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 84
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 85
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 87
    .restart local v8    # "link":Ljava/lang/String;
    new-instance v10, Lcom/vkcoffee/android/UserProfile;

    invoke-direct {v10}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 88
    .restart local v10    # "p":Lcom/vkcoffee/android/UserProfile;
    sget-object v17, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v18, 0x7f08007b

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    .line 89
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "vk.com/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/vkcoffee/android/UserProfile;->university:Ljava/lang/String;

    .line 90
    invoke-virtual {v14, v10}, Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 94
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "p":Lcom/vkcoffee/android/UserProfile;
    .end local v12    # "ptn":Ljava/util/regex/Pattern;
    :catch_1
    move-exception v16

    .line 95
    .restart local v16    # "x":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v17, "vk"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/execute/SearchGetHints;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/execute/SearchGetHints$EmptyPaginatedList;

    move-result-object v0

    return-object v0
.end method
