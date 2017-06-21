.class public Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;
.super Lcom/vkcoffee/android/UserProfile;
.source "Cache.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/cache/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BirthdayEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bDay:I

.field public bMonth:I

.field public bYear:I

.field public date:Ljava/lang/String;

.field public isToday:Z

.field public subtitle:Ljava/lang/String;

.field public upcoming:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1284
    new-instance v0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 1272
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1275
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/UserProfile;-><init>(Landroid/os/Parcel;)V

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    .line 1277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    .line 1278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    .line 1279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    .line 1280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    .line 1281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    .line 1282
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 1261
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/UserProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1262
    iget v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    iget v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->bYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    iget-object v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->date:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/vkcoffee/android/cache/Cache$BirthdayEntry;->upcoming:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1268
    return-void
.end method
