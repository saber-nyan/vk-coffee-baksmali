.class public Lcom/vkcoffee/android/data/GameGenre;
.super Ljava/lang/Object;
.source "GameGenre.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/data/GameGenre;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/vkcoffee/android/data/GameGenre$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/GameGenre$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/GameGenre;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/vkcoffee/android/data/GameGenre;->id:I

    .line 18
    iput-object p2, p0, Lcom/vkcoffee/android/data/GameGenre;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/data/GameGenre;-><init>(ILjava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 22
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/data/GameGenre;-><init>(ILjava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    iget v0, p0, Lcom/vkcoffee/android/data/GameGenre;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-object v0, p0, Lcom/vkcoffee/android/data/GameGenre;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    return-void
.end method
