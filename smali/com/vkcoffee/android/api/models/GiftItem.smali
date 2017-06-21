.class public Lcom/vkcoffee/android/api/models/GiftItem;
.super Lcom/vkcoffee/android/api/models/Model;
.source "GiftItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/models/GiftItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public date:J

.field public dateStr:Ljava/lang/String;

.field public from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public from_id:I

.field public gift:Lcom/vkcoffee/android/api/models/Gift;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public giftHash:Ljava/lang/String;

.field public id:I

.field public message:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private privacy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/vkcoffee/android/api/models/GiftItem$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/models/GiftItem$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/models/GiftItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->id:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->from_id:I

    .line 76
    const-class v0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->message:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->date:J

    .line 79
    const-class v0, Lcom/vkcoffee/android/api/models/Gift;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/Gift;

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->gift:Lcom/vkcoffee/android/api/models/Gift;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->privacy:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->giftHash:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->dateStr:Ljava/lang/String;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/api/models/GiftItem$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/api/models/GiftItem$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/models/GiftItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "source"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 38
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->id:I

    .line 39
    const-string/jumbo v1, "from_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->from_id:I

    .line 40
    const-string/jumbo v1, "message"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->message:Ljava/lang/String;

    .line 41
    const-string/jumbo v1, "date"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vkcoffee/android/api/models/GiftItem;->date:J

    .line 42
    const-string/jumbo v1, "gift"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 43
    .local v0, "gift":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Lcom/vkcoffee/android/api/models/Gift;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/api/models/Gift;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->gift:Lcom/vkcoffee/android/api/models/Gift;

    .line 46
    :cond_0
    const-string/jumbo v1, "privacy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->privacy:I

    .line 47
    const-string/jumbo v1, "gift_hash"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->giftHash:Ljava/lang/String;

    .line 48
    iget-wide v2, p0, Lcom/vkcoffee/android/api/models/GiftItem;->date:J

    long-to-int v1, v2

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/models/GiftItem;->dateStr:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->privacy:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 58
    iget v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->from_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->from:Lcom/vkcoffee/android/api/gifts/GiftsGet$UserProfile;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-wide v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->date:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->gift:Lcom/vkcoffee/android/api/models/Gift;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 64
    iget v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->privacy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->giftHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/GiftItem;->dateStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    return-void
.end method
