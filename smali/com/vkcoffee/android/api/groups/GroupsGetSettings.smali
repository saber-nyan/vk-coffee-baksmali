.class public Lcom/vkcoffee/android/api/groups/GroupsGetSettings;
.super Lcom/vkcoffee/android/api/VKAPIRequest;
.source "GroupsGetSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/VKAPIRequest",
        "<",
        "Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "gid"    # I

    .prologue
    .line 25
    const-string/jumbo v0, "groups.getSettings"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "group_id"

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 27
    return-void
.end method


# virtual methods
.method public parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    .locals 14
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 31
    :try_start_0
    const-string/jumbo v12, "response"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    new-instance v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    invoke-direct {v7}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;-><init>()V

    .line 33
    .local v7, "res":Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    const-string/jumbo v12, "title"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->title:Ljava/lang/String;

    .line 34
    const-string/jumbo v12, "description"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->description:Ljava/lang/String;

    .line 35
    const-string/jumbo v12, "address"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->address:Ljava/lang/String;

    .line 36
    const-string/jumbo v12, "website"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->website:Ljava/lang/String;

    .line 37
    const-string/jumbo v12, "wall"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wall:I

    .line 38
    const-string/jumbo v12, "photos"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->photos:I

    .line 39
    const-string/jumbo v12, "video"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->video:I

    .line 40
    const-string/jumbo v12, "audio"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->audio:I

    .line 41
    const-string/jumbo v12, "docs"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->docs:I

    .line 42
    const-string/jumbo v12, "topics"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->topics:I

    .line 43
    const-string/jumbo v12, "wiki"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wiki:I

    .line 44
    const-string/jumbo v12, "events"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->events:I

    .line 45
    const-string/jumbo v12, "places"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->places:I

    .line 46
    const-string/jumbo v12, "contacts"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->contacts:I

    .line 47
    const-string/jumbo v12, "links"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->links:I

    .line 48
    const-string/jumbo v12, "access"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->access:I

    .line 49
    const-string/jumbo v12, "subject"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 50
    const-string/jumbo v12, "subject"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subject:I

    .line 55
    :goto_0
    const-string/jumbo v12, "start_date"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->startTime:I

    .line 56
    const-string/jumbo v12, "finish_date"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    .line 57
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, "hasNone":Z
    const-string/jumbo v12, "subject_list"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 60
    const-string/jumbo v12, "subject_list"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 61
    .local v0, "a":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 62
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 63
    .local v1, "c":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;-><init>()V

    .line 64
    .local v2, "cat":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    const-string/jumbo v12, "name"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    .line 65
    const-string/jumbo v12, "id"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 66
    iget v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    if-nez v12, :cond_0

    .line 67
    const/4 v3, 0x1

    .line 69
    :cond_0
    iget-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "c":Lorg/json/JSONObject;
    .end local v2    # "cat":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    .end local v3    # "hasNone":Z
    .end local v4    # "i":I
    :cond_1
    const-string/jumbo v12, "public_category"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subject:I

    .line 53
    const-string/jumbo v12, "public_subcategory"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subcategory:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v7    # "res":Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    :catch_0
    move-exception v11

    .line 106
    .local v11, "x":Ljava/lang/Exception;
    const-string/jumbo v12, "vk"

    invoke-static {v12, v11}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v7, 0x0

    .end local v11    # "x":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-object v7

    .line 71
    .restart local v3    # "hasNone":Z
    .restart local v7    # "res":Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
    :cond_3
    :try_start_1
    const-string/jumbo v12, "public_category_list"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 72
    const-string/jumbo v12, "public_category_list"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    .restart local v0    # "a":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 74
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    .restart local v1    # "c":Lorg/json/JSONObject;
    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    invoke-direct {v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;-><init>()V

    .line 76
    .restart local v2    # "cat":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    const-string/jumbo v12, "name"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    .line 77
    const-string/jumbo v12, "id"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 78
    iget v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    if-nez v12, :cond_4

    .line 79
    const/4 v3, 0x1

    .line 81
    :cond_4
    const-string/jumbo v12, "subtypes_list"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 82
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    .line 83
    const-string/jumbo v12, "subtypes_list"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 84
    .local v8, "sa":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_5

    .line 85
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 86
    .local v9, "sc":Lorg/json/JSONObject;
    new-instance v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    invoke-direct {v10}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;-><init>()V

    .line 87
    .local v10, "subcat":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    const-string/jumbo v12, "id"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 88
    const-string/jumbo v12, "name"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    .line 89
    iget-object v12, v2, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 92
    .end local v5    # "j":I
    .end local v8    # "sa":Lorg/json/JSONArray;
    .end local v9    # "sc":Lorg/json/JSONObject;
    .end local v10    # "subcat":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    :cond_5
    iget-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 95
    .end local v0    # "a":Lorg/json/JSONArray;
    .end local v1    # "c":Lorg/json/JSONObject;
    .end local v2    # "cat":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    .end local v4    # "i":I
    :cond_6
    if-nez v3, :cond_7

    .line 96
    new-instance v6, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;

    invoke-direct {v6}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;-><init>()V

    .line 97
    .local v6, "none":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    const/4 v12, 0x0

    iput v12, v6, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 98
    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v13, 0x7f080300

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    .line 99
    iget-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    .end local v6    # "none":Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
    :cond_7
    const-string/jumbo v12, "place"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 102
    new-instance v12, Lcom/vkcoffee/android/GeoPlace;

    const-string/jumbo v13, "place"

    invoke-virtual {p1, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/vkcoffee/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    iput-object v12, v7, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->place:Lcom/vkcoffee/android/GeoPlace;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public bridge synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    move-result-object v0

    return-object v0
.end method
