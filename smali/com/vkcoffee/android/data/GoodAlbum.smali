.class public Lcom/vkcoffee/android/data/GoodAlbum;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "GoodAlbum.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/data/GoodAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final count:I

.field public final id:I

.field public final owner_id:I

.field public final photo:Lcom/vkcoffee/android/Photo;

.field public final title:Ljava/lang/String;

.field public final updated_time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/vkcoffee/android/data/GoodAlbum$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/GoodAlbum$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/GoodAlbum;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "parcel"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->id:I

    .line 34
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->owner_id:I

    .line 35
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->title:Ljava/lang/String;

    .line 36
    const-class v0, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo;

    iput-object v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    .line 37
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    .line 38
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->updated_time:I

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 19
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/GoodAlbum;->id:I

    .line 20
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/GoodAlbum;->owner_id:I

    .line 21
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/data/GoodAlbum;->title:Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 24
    .local v0, "jPhoto":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    .line 26
    const-string/jumbo v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    .line 27
    const-string/jumbo v1, "updated_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/data/GoodAlbum;->updated_time:I

    .line 28
    return-void

    .line 24
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/Photo;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 43
    iget v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->owner_id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->photo:Lcom/vkcoffee/android/Photo;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 47
    iget v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->count:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/vkcoffee/android/data/GoodAlbum;->updated_time:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 49
    return-void
.end method
