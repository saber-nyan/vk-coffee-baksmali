.class public Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
.super Ljava/lang/Object;
.source "MediaStoreEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private corrupted:Z

.field public final dateTaken:J

.field public final duration:I

.field public final exifOrientation:I

.field public final id:I

.field public final isVideo:Z

.field public final path:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry$1;

    invoke-direct {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry$1;-><init>()V

    sput-object v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;IJ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "path"    # Landroid/net/Uri;
    .param p3, "exifOrientation"    # I
    .param p4, "dateTaken"    # J

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    .line 26
    iput-object p2, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    .line 27
    iput p3, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    .line 28
    iput-wide p4, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->dateTaken:J

    .line 29
    iput-boolean v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    .line 31
    iput v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->duration:I

    .line 32
    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;JJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "path"    # Landroid/net/Uri;
    .param p3, "duration"    # J
    .param p5, "dateTaken"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    .line 36
    iput-object p2, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    .line 37
    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->duration:I

    .line 38
    iput-wide p5, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->dateTaken:J

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    .line 42
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    .line 90
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->dateTaken:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->duration:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->corrupted:Z

    .line 96
    return-void

    :cond_0
    move v0, v2

    .line 93
    goto :goto_0

    :cond_1
    move v1, v2

    .line 95
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 115
    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 117
    .local v0, "entry":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    iget v3, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    iget v4, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 118
    :cond_4
    iget-boolean v3, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    iget-boolean v4, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;-><init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V

    return-object v0
.end method

.method public getThumbnailImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;-><init>(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;Z)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 124
    iget v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    .line 125
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 126
    return v0

    .line 125
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCorrupted()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->corrupted:Z

    return v0
.end method

.method public setCorrupted(Z)V
    .locals 0
    .param p1, "corrupted"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->corrupted:Z

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageEntry{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", exifOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dateTaken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->dateTaken:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", corrupted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->corrupted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    iget v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    iget v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->exifOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-wide v4, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->dateTaken:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-boolean v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    iget v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-boolean v0, p0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->corrupted:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 86
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_1
.end method
