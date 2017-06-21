.class public Lcom/vkcoffee/android/api/models/GiftCategory;
.super Lcom/vkcoffee/android/api/models/Model;
.source "GiftCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cache:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;"
        }
    .end annotation
.end field

.field public items:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/models/CatalogedGift;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/vkcoffee/android/api/models/GiftCategory$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/models/GiftCategory$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/models/GiftCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->title:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "size":I
    if-ltz v1, :cond_0

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    .line 66
    iget-object v2, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    const-class v3, Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 68
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->cache:Landroid/util/SparseArray;

    .line 69
    iget-object v2, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/CatalogedGift;

    .line 70
    .local v0, "gift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    iget-object v3, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->cache:Landroid/util/SparseArray;

    iget-object v4, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget v4, v4, Lcom/vkcoffee/android/api/models/Gift;->id:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v0    # "gift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 30
    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->name:Ljava/lang/String;

    .line 31
    const-string/jumbo v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->title:Ljava/lang/String;

    .line 32
    const-string/jumbo v4, "items"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 33
    .local v3, "items":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    .line 35
    new-instance v4, Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->cache:Landroid/util/SparseArray;

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 37
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 38
    .local v2, "item":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 39
    new-instance v0, Lcom/vkcoffee/android/api/models/CatalogedGift;

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/api/models/CatalogedGift;-><init>(Lorg/json/JSONObject;)V

    .line 40
    .local v0, "gift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    iget-object v4, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v4, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->cache:Landroid/util/SparseArray;

    iget-object v5, v0, Lcom/vkcoffee/android/api/models/CatalogedGift;->gift:Lcom/vkcoffee/android/api/models/Gift;

    iget v5, v5, Lcom/vkcoffee/android/api/models/Gift;->id:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    .end local v0    # "gift":Lcom/vkcoffee/android/api/models/CatalogedGift;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONObject;
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 58
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftCategory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
