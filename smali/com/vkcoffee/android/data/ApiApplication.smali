.class public Lcom/vkcoffee/android/data/ApiApplication;
.super Ljava/lang/Object;
.source "ApiApplication.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/data/ServerKeys;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/ApiApplication;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_SIZES:[I


# instance fields
.field public author_group:I

.field public banner:Ljava/lang/String;

.field public bannerBig:Ljava/lang/String;

.field public catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

.field public description:Ljava/lang/String;

.field public friends:I

.field public friendsPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public genre:Ljava/lang/String;

.field public icons:[Ljava/lang/String;

.field public id:I

.field public installed:Z

.field public installedOnDevice:Z

.field public isInCatalog:Z

.field public isNew:Z

.field public members:I

.field public notificationCount:I

.field public notificationsEnabled:Z

.field public packageName:Ljava/lang/String;

.field public screenshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation
.end field

.field public shortDescription:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/data/ApiApplication;->ICON_SIZES:[I

    .line 178
    new-instance v0, Lcom/vkcoffee/android/data/ApiApplication$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/ApiApplication$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/ApiApplication;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 18
    :array_0
    .array-data 4
        0x10
        0x19
        0x32
        0x4b
        0x64
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    .line 32
    iput-object v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    .line 34
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    .line 35
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    .line 36
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z

    .line 38
    iput v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    .line 40
    iput-object v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    .line 30
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    .line 32
    iput-object v3, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    .line 33
    iput v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    .line 34
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    .line 35
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    .line 36
    iput-boolean v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z

    .line 38
    iput v2, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    .line 40
    iput-object v3, p0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->banner:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->bannerBig:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->shortDescription:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->members:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->friends:I

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->genre:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    .line 170
    sget-object v0, Lcom/vkcoffee/android/Photo;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    .line 174
    const-class v0, Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/CatalogInfo;

    iput-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z

    .line 176
    return-void

    :cond_0
    move v0, v2

    .line 167
    goto :goto_0

    :cond_1
    move v0, v2

    .line 168
    goto :goto_1

    :cond_2
    move v0, v2

    .line 172
    goto :goto_2

    :cond_3
    move v0, v2

    .line 173
    goto :goto_3

    :cond_4
    move v1, v2

    .line 175
    goto :goto_4
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/data/ApiApplication$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/data/ApiApplication$1;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/ApiApplication;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    .line 30
    iput-boolean v3, p0, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    .line 32
    iput-object v6, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    .line 33
    iput v4, p0, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    .line 34
    iput-boolean v4, p0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    .line 35
    iput-boolean v4, p0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    .line 36
    iput-boolean v4, p0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z

    .line 38
    iput v4, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    .line 40
    iput-object v6, p0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    .line 42
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->friendsPhotos:Ljava/util/ArrayList;

    .line 50
    :try_start_0
    const-string/jumbo v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    .line 51
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    .line 52
    const-string/jumbo v5, "description"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    .line 53
    iget-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    invoke-static {v5}, Lcom/vkcoffee/android/data/ApiApplication;->generateShortDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->shortDescription:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lcom/vkcoffee/android/data/ApiApplication;->ICON_SIZES:[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "icon_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/vkcoffee/android/data/ApiApplication;->ICON_SIZES:[I

    aget v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const-string/jumbo v5, "platform_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    .line 58
    const-string/jumbo v5, "new"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    .line 59
    const-string/jumbo v5, "members_count"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->members:I

    .line 60
    const-string/jumbo v5, "banner_186"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->banner:Ljava/lang/String;

    .line 61
    const-string/jumbo v5, "banner_896"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->bannerBig:Ljava/lang/String;

    .line 62
    const-string/jumbo v5, "genre"

    const-string/jumbo v6, "No Genre"

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->genre:Ljava/lang/String;

    .line 63
    const-string/jumbo v5, "push_enabled"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    .line 64
    const-string/jumbo v5, "friends"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    const-string/jumbo v5, "friends"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->friends:I

    .line 67
    :cond_1
    const-string/jumbo v5, "screenshots"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 68
    .local v1, "jsonArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_4

    .line 69
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 71
    iget-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    new-instance v6, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    move v5, v4

    .line 58
    goto :goto_1

    :cond_3
    move v5, v4

    .line 63
    goto :goto_2

    .line 74
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    const-string/jumbo v5, "author_group"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    .line 75
    const-string/jumbo v5, "installed"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    .line 76
    iget-object v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/vkcoffee/android/data/Games;->isAppInstalledOnDevice(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    .line 77
    const-string/jumbo v5, "is_in_catalog"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    iput-boolean v3, p0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :goto_5
    return-void

    .restart local v0    # "i":I
    .restart local v1    # "jsonArray":Lorg/json/JSONArray;
    :cond_5
    move v3, v4

    .line 77
    goto :goto_4

    .line 78
    .end local v0    # "i":I
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 79
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static generateShortDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    if-nez p0, :cond_1

    .line 85
    const/4 p0, 0x0

    .line 100
    .end local p0    # "description":Ljava/lang/String;
    .local v0, "chars":[C
    .local v1, "count":I
    .local v2, "i":I
    :cond_0
    :goto_0
    return-object p0

    .line 87
    .end local v0    # "chars":[C
    .end local v1    # "count":I
    .end local v2    # "i":I
    .restart local p0    # "description":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x4

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 88
    .restart local v0    # "chars":[C
    const/4 v1, 0x0

    .line 89
    .restart local v1    # "count":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 90
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 91
    aget-char v4, v0, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_3

    .line 92
    add-int/lit8 v1, v1, 0x1

    .line 96
    :cond_2
    const/4 v4, 0x1

    if-lt v1, v4, :cond_4

    .line 97
    const/4 v4, 0x0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 90
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 89
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    nop

    :array_0
    .array-data 2
        0x2es
        0x21s
        0x3fs
        0x3bs
    .end array-data
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 106
    instance-of v0, p1, Lcom/vkcoffee/android/data/ApiApplication;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    check-cast p1, Lcom/vkcoffee/android/data/ApiApplication;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ApiApplication_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/data/ApiApplication;->members:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->banner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->bannerBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->shortDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->members:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->friends:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->genre:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->isNew:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationsEnabled:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->notificationCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->screenshot:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 148
    iget v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->author_group:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->installed:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->installedOnDevice:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->catalogInfo:Lcom/vkcoffee/android/data/CatalogInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/ApiApplication;->isInCatalog:Z

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    return-void

    :cond_0
    move v0, v2

    .line 144
    goto :goto_0

    :cond_1
    move v0, v2

    .line 145
    goto :goto_1

    :cond_2
    move v0, v2

    .line 149
    goto :goto_2

    :cond_3
    move v0, v2

    .line 150
    goto :goto_3

    :cond_4
    move v1, v2

    .line 152
    goto :goto_4
.end method
