.class public Lcom/vkcoffee/android/data/GameRequest;
.super Ljava/lang/Object;
.source "GameRequest.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/data/ServerKeys;


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMN_APP_GENRE:Ljava/lang/String; = "app_genre"

.field public static final COLUMN_APP_ID:Ljava/lang/String; = "app_id"

.field public static final COLUMN_APP_PACKAGE:Ljava/lang/String; = "app_package"

.field public static final COLUMN_APP_TITLE:Ljava/lang/String; = "app_title"

.field public static final COLUMN_APP_URL:Ljava/lang/String; = "app_url"

.field public static final COLUMN_DATE:Ljava/lang/String; = "date"

.field public static final COLUMN_FROM_IDS:Ljava/lang/String; = "from_ids"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_TEXT:Ljava/lang/String; = "text"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_UNREAD:Ljava/lang/String; = "unread"

.field public static final COLUMN_USER_PROFILE_IDS:Ljava/lang/String; = "user_profile_ids"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/GameRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE:Ljava/lang/String; = "game_requests"

.field public static final TYPE_INVITE:I = 0x1

.field public static final TYPE_REQUEST:I = 0x2


# instance fields
.field public appGenre:Ljava/lang/String;

.field public appId:I

.field public appPackage:Ljava/lang/String;

.field public appTitle:Ljava/lang/String;

.field public appUrl:Ljava/lang/String;

.field public fromDb:Z

.field public fromIds:[I

.field public id:J

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field public text:Ljava/lang/String;

.field public time:I

.field public type:I

.field public unread:Z

.field public userProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field public userProfilesId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "unread"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "app_genre"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "app_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "app_url"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "app_package"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "key"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "from_ids"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "user_profile_ids"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/data/GameRequest;->COLUMNS:[Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/vkcoffee/android/data/GameRequest$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/GameRequest$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/GameRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    .line 59
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    .line 244
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    .line 245
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    .line 246
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    .line 247
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/GameRequest;->unread:Z

    .line 248
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    .line 249
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appGenre:Ljava/lang/String;

    .line 250
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    .line 251
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appUrl:Ljava/lang/String;

    .line 252
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    .line 253
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->key:Ljava/lang/String;

    .line 254
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/GameRequest;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    .line 255
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/data/GameRequest;->stringToIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    .line 256
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameRequest;->time:I

    .line 257
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    .line 59
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/GameRequest;->unread:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appGenre:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appUrl:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->key:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    .line 196
    sget-object v0, Lcom/vkcoffee/android/UserProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GameRequest;->time:I

    .line 200
    return-void

    :cond_0
    move v0, v2

    .line 184
    goto :goto_0

    :cond_1
    move v1, v2

    .line 198
    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 12
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    .local p3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/data/ApiApplication;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    .line 59
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    .line 85
    :try_start_0
    const-string/jumbo v9, "app_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    .line 86
    iget v9, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    invoke-virtual {p3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/ApiApplication;

    .line 87
    .local v0, "application":Lcom/vkcoffee/android/data/ApiApplication;
    iget-object v9, v0, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    .line 88
    iget-object v9, v0, Lcom/vkcoffee/android/data/ApiApplication;->genre:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->appGenre:Ljava/lang/String;

    .line 89
    iget-object v9, v0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->appUrl:Ljava/lang/String;

    .line 90
    iget-object v9, v0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    .line 92
    const-string/jumbo v9, "text"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    .line 93
    const-string/jumbo v9, "type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "tp":Ljava/lang/String;
    const-string/jumbo v9, "request"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 95
    const/4 v9, 0x2

    iput v9, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    .line 100
    :cond_0
    :goto_0
    const-string/jumbo v9, "from"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 101
    .local v2, "fromJson":Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    .line 102
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 103
    .local v5, "length":I
    new-array v9, v5, [I

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    .line 104
    new-array v9, v5, [I

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    .line 105
    new-array v3, v5, [I

    .line 106
    .local v3, "fromTimes":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 107
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 108
    .local v1, "from":Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    const-string/jumbo v10, "id"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v9, v4

    .line 109
    if-nez v4, :cond_1

    .line 110
    const-string/jumbo v9, "key"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->key:Ljava/lang/String;

    .line 112
    :cond_1
    const-string/jumbo v9, "from_id"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 113
    .local v7, "userId":I
    iget-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    aput v7, v9, v4

    .line 114
    const-string/jumbo v9, "date"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v3, v4

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 96
    .end local v1    # "from":Lorg/json/JSONObject;
    .end local v2    # "fromJson":Lorg/json/JSONArray;
    .end local v3    # "fromTimes":[I
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v7    # "userId":I
    :cond_2
    const-string/jumbo v9, "invite"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 97
    const/4 v9, 0x1

    iput v9, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v0    # "application":Lcom/vkcoffee/android/data/ApiApplication;
    .end local v6    # "tp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 122
    .local v8, "x":Ljava/lang/Exception;
    const-string/jumbo v9, "vk"

    invoke-static {v9, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    .end local v8    # "x":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/data/GameRequest;->fillUserProfiles(Landroid/util/SparseArray;)V

    .line 125
    return-void

    .line 116
    .restart local v0    # "application":Lcom/vkcoffee/android/data/ApiApplication;
    .restart local v2    # "fromJson":Lorg/json/JSONArray;
    .restart local v3    # "fromTimes":[I
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    .restart local v6    # "tp":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v3}, Lcom/vkcoffee/android/data/GameRequest;->getElderDate([I)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/data/GameRequest;->time:I

    .line 119
    .end local v3    # "fromTimes":[I
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_4
    const-string/jumbo v9, "name"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    .line 120
    const-string/jumbo v9, "unread"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/vkcoffee/android/data/GameRequest;->unread:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static createSql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Lcom/vkcoffee/android/data/db/Table;

    const-string/jumbo v1, "game_requests"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/data/db/Table;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table;->withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/db/Table$Column;->setPrimaryKey()Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/db/Table$Column;->setAutoincrement()Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 283
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 284
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "name"

    .line 285
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "unread"

    .line 286
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "app_id"

    .line 287
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "app_genre"

    .line 288
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "app_title"

    .line 289
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "app_url"

    .line 290
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "app_package"

    .line 291
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "key"

    .line 292
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "from_ids"

    .line 293
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "user_profile_ids"

    .line 294
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    const-string/jumbo v1, "date"

    .line 295
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/data/db/Table$Column;->withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/vkcoffee/android/data/db/Table$Column;->createSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getElderDate([I)I
    .locals 4
    .param p0, "fromTimes"    # [I

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "time":I
    if-eqz p0, :cond_1

    .line 171
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p0, v2

    .line 172
    .local v0, "l":I
    if-le v0, v1, :cond_0

    move v1, v0

    .line 171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "l":I
    :cond_1
    return v1
.end method

.method private hashArray([I)I
    .locals 4
    .param p1, "ids"    # [I

    .prologue
    const/4 v2, 0x0

    .line 157
    if-nez p1, :cond_1

    move v1, v2

    .line 164
    :cond_0
    return v1

    .line 160
    :cond_1
    const/4 v1, 0x0

    .line 161
    .local v1, "ret":I
    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p1, v2

    .line 162
    .local v0, "i":I
    add-int/2addr v1, v0

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static intArrayToString([I)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    const/4 v2, 0x0

    .line 313
    :goto_0
    return-object v2

    .line 304
    :cond_0
    array-length v2, p0

    if-nez v2, :cond_1

    .line 305
    const-string/jumbo v2, ""

    goto :goto_0

    .line 307
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 308
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 310
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static stringToIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 317
    if-nez p0, :cond_1

    .line 318
    const/4 v1, 0x0

    .line 327
    :cond_0
    :goto_0
    return-object v1

    .line 319
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    const/4 v3, 0x0

    new-array v1, v3, [I

    goto :goto_0

    .line 322
    :cond_2
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [I

    .line 324
    .local v1, "ret":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 325
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 139
    instance-of v2, p1, Lcom/vkcoffee/android/data/GameRequest;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 140
    check-cast v0, Lcom/vkcoffee/android/data/GameRequest;

    .line 141
    .local v0, "r":Lcom/vkcoffee/android/data/GameRequest;
    iget v2, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    iget v3, v0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    iget v3, v0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    iget-object v3, v0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    .line 143
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    .line 144
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    iget-object v3, v0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    .line 145
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 147
    .end local v0    # "r":Lcom/vkcoffee/android/data/GameRequest;
    :cond_0
    return v1
.end method

.method public fillUserProfiles(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/vkcoffee/android/UserProfile;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    .line 130
    iget-object v3, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 131
    .local v0, "i":I
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/UserProfile;

    .local v1, "userProfile":Lcom/vkcoffee/android/UserProfile;
    if-eqz v1, :cond_0

    .line 132
    iget-object v5, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    .end local v1    # "userProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_1
    return-void
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    iget v1, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/data/GameRequest;->hashArray([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/data/GameRequest;->tag:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 261
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v0, "cv":Landroid/content/ContentValues;
    iget-wide v2, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 263
    const-string/jumbo v1, "_id"

    iget-wide v2, p0, Lcom/vkcoffee/android/data/GameRequest;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 265
    :cond_0
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string/jumbo v2, "unread"

    iget-boolean v1, p0, Lcom/vkcoffee/android/data/GameRequest;->unread:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string/jumbo v1, "app_id"

    iget v2, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string/jumbo v1, "app_genre"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->appGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v1, "app_title"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v1, "app_url"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->appUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v1, "app_package"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "from_ids"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    invoke-static {v2}, Lcom/vkcoffee/android/data/GameRequest;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "user_profile_ids"

    iget-object v2, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    invoke-static {v2}, Lcom/vkcoffee/android/data/GameRequest;->intArrayToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string/jumbo v1, "date"

    iget v2, p0, Lcom/vkcoffee/android/data/GameRequest;->time:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    return-object v0

    .line 268
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget v0, p0, Lcom/vkcoffee/android/data/GameRequest;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/GameRequest;->unread:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 209
    iget v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appGenre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->fromIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 216
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfilesId:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameRequest;->userProfiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 221
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/GameRequest;->fromDb:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 222
    iget v0, p0, Lcom/vkcoffee/android/data/GameRequest;->time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 223
    return-void

    :cond_0
    move v0, v2

    .line 207
    goto :goto_0

    :cond_1
    move v1, v2

    .line 221
    goto :goto_1
.end method
