.class public Lcom/vkcoffee/android/api/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/api/BaseDocument;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access_key:Ljava/lang/String;

.field public date:I

.field public did:I

.field public ext:Ljava/lang/String;

.field public height:I

.field public oid:I

.field public size:I

.field public thumb:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public video:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Lcom/vkcoffee/android/api/Document$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/Document$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/Document;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "s"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/Document;->did:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/Document;->oid:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/Document;->size:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/Document;->ext:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/Document;->date:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/Document;->video:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/Document;->width:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/Document;->height:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/Document;->access_key:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    const-string/jumbo v9, "id"

    const-string/jumbo v10, "did"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->did:I

    .line 44
    const-string/jumbo v9, "owner_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->oid:I

    .line 45
    const-string/jumbo v9, "title"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    .line 46
    const-string/jumbo v9, "size"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->size:I

    .line 47
    const-string/jumbo v9, "ext"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->ext:Ljava/lang/String;

    .line 48
    const-string/jumbo v9, "url"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    .line 49
    const-string/jumbo v9, "access_key"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->access_key:Ljava/lang/String;

    .line 50
    const-string/jumbo v9, "preview"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 51
    .local v3, "preview":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 53
    const-string/jumbo v9, "video"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 54
    .local v7, "video":Lorg/json/JSONObject;
    if-eqz v7, :cond_4

    .line 55
    const-string/jumbo v9, "src"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->video:Ljava/lang/String;

    .line 59
    const-string/jumbo v9, "width"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->width:I

    .line 60
    const-string/jumbo v9, "height"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->height:I

    .line 61
    const-string/jumbo v4, "o"

    .line 66
    .local v4, "requiredSize":Ljava/lang/String;
    :goto_0
    const-string/jumbo v9, "photo"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    .local v2, "photo":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 68
    const-string/jumbo v9, "sizes"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 69
    .local v6, "sizes":Lorg/json/JSONArray;
    if-eqz v6, :cond_1

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 71
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 72
    .local v5, "size":Lorg/json/JSONObject;
    const-string/jumbo v9, "type"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 73
    const-string/jumbo v9, "src"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    .line 74
    iget v9, p0, Lcom/vkcoffee/android/api/Document;->width:I

    if-nez v9, :cond_0

    .line 75
    const-string/jumbo v9, "width"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->width:I

    .line 77
    :cond_0
    iget v9, p0, Lcom/vkcoffee/android/api/Document;->height:I

    if-nez v9, :cond_1

    .line 78
    const-string/jumbo v9, "height"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->height:I

    .line 86
    .end local v1    # "i":I
    .end local v5    # "size":Lorg/json/JSONObject;
    .end local v6    # "sizes":Lorg/json/JSONArray;
    :cond_1
    const-string/jumbo v9, "graffiti"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    .local v0, "graffiti":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 89
    const-string/jumbo v9, "width"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->width:I

    .line 90
    const-string/jumbo v9, "height"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->height:I

    .line 93
    .end local v0    # "graffiti":Lorg/json/JSONObject;
    .end local v2    # "photo":Lorg/json/JSONObject;
    .end local v4    # "requiredSize":Ljava/lang/String;
    .end local v7    # "video":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v9, "gift"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 94
    iget-object v9, p0, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    .line 95
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    .line 96
    sget-object v9, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0801e8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    .line 98
    :cond_3
    const-string/jumbo v9, "date"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/vkcoffee/android/api/Document;->date:I

    .line 102
    .end local v3    # "preview":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 63
    .restart local v3    # "preview":Lorg/json/JSONObject;
    .restart local v7    # "video":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v4, "m"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "requiredSize":Ljava/lang/String;
    goto/16 :goto_0

    .line 70
    .restart local v1    # "i":I
    .restart local v2    # "photo":Lorg/json/JSONObject;
    .restart local v5    # "size":Lorg/json/JSONObject;
    .restart local v6    # "sizes":Lorg/json/JSONArray;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 99
    .end local v1    # "i":I
    .end local v2    # "photo":Lorg/json/JSONObject;
    .end local v3    # "preview":Lorg/json/JSONObject;
    .end local v4    # "requiredSize":Ljava/lang/String;
    .end local v5    # "size":Lorg/json/JSONObject;
    .end local v6    # "sizes":Lorg/json/JSONArray;
    .end local v7    # "video":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 100
    .local v8, "x":Ljava/lang/Exception;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "Error parsing doc"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v8, v9, v10

    invoke-static {v9}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getDate()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->date:I

    return v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->size:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->did:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->ext:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->date:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->video:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/vkcoffee/android/api/Document;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-object v0, p0, Lcom/vkcoffee/android/api/Document;->access_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return-void
.end method
