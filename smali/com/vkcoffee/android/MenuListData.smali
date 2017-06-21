.class public Lcom/vkcoffee/android/MenuListData;
.super Ljava/lang/Object;
.source "MenuListData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AUDIOS()I
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "AUDIOS"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static CLOSE()I
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CLOSE"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static DIALOGS()I
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "DIALOGS"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static Data()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "MenuList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static FAVE()I
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FAVE"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static FEEDBACK()I
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FEEDBACK"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static FRIENDS()I
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FRIENDS"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static GAMES()I
    .locals 3

    .prologue
    .line 69
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GAMES"

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static GROUPS()I
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "GROUPS"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static NEWS()I
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NEWS"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static OFFLINE()I
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "OFFLINE"

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static PHOTOS()I
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PHOTOS"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static PIN()I
    .locals 3

    .prologue
    .line 101
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PIN"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static SEARCH()I
    .locals 3

    .prologue
    .line 77
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SEARCH"

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static SETTINGS()I
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "SETTINGS"

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static UNREAD()I
    .locals 3

    .prologue
    .line 89
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UNREAD"

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static UNTYPING()I
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "UNTYPING"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static VIDEOS()I
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "VIDEOS"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static addSize()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "count"

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->getSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public static changedPos()Z
    .locals 3

    .prologue
    .line 33
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "chPos"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static clearChangedPos()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chPos"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public static clearSettingsMenu()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/vkcoffee/android/SPGet;->DEF()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 115
    const-string v1, "NEWS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    const-string v1, "FEEDBACK"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    const-string v1, "DIALOGS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    const-string v1, "FRIENDS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string v1, "GROUPS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    const-string v1, "PHOTOS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    const-string v1, "VIDEOS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    const-string v1, "AUDIOS"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    const-string v1, "GAMES"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    const-string v1, "FAVE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    const-string v1, "SEARCH"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    const-string v1, "OFFLINE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    const-string v1, "UNREAD"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 128
    const-string v1, "UNTYPING"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string v1, "CLOSE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    const-string v1, "PIN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method

.method public static getList()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v0, "h":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 170
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->NEWS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NEWS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 173
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FEEDBACK()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FEEDBACK"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 176
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->DIALOGS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DIALOGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_2
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 179
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FRIENDS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FRIENDS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 182
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GROUPS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GROUPS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 185
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PHOTOS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PHOTOS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_5
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v1

    if-eq v1, v3, :cond_6

    .line 188
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->VIDEOS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEOS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_6
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v1

    if-eq v1, v3, :cond_7

    .line 191
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->AUDIOS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AUDIOS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_7
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 194
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->GAMES()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GAMES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_8
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 197
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->FAVE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FAVE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_9
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v1

    if-eq v1, v3, :cond_a

    .line 200
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SEARCH()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SEARCH"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_a
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v1

    if-eq v1, v3, :cond_b

    .line 203
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->SETTINGS()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SETTINGS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_b
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v1

    if-eq v1, v3, :cond_c

    .line 206
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->OFFLINE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OFFLINE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_c
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v1

    if-eq v1, v3, :cond_d

    .line 209
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNREAD()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UNREAD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_d
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v1

    if-eq v1, v3, :cond_e

    .line 212
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->UNTYPING()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "UNTYPING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_e
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v1

    if-eq v1, v3, :cond_f

    .line 215
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->CLOSE()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CLOSE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_f
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v1

    if-eq v1, v3, :cond_10

    .line 218
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->PIN()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PIN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_10
    return-object v0
.end method

.method public static getSize()I
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "count"

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static reCount()V
    .locals 6

    .prologue
    .line 153
    new-instance v2, Ljava/util/TreeMap;

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->getList()Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 154
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 155
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 156
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    .line 157
    .local v0, "count":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    invoke-static {v0}, Lcom/vkcoffee/android/MenuListData;->setReCountSize(I)V

    .line 164
    return-void

    .line 158
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 159
    .local v3, "me2":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    .line 160
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/vkcoffee/android/MenuListData;->saveResult(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static returnPos(Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->addSize()V

    .line 149
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x64

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method public static saveResult(Ljava/lang/String;I)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 144
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    return-void
.end method

.method public static setChangedPos()V
    .locals 3

    .prologue
    .line 25
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "chPos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public static setReCountSize(I)V
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 110
    invoke-static {}, Lcom/vkcoffee/android/MenuListData;->Data()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "count"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    return-void
.end method
