.class public Lcom/vk/attachpicker/mediastore/AlbumEntry;
.super Ljava/lang/Object;
.source "AlbumEntry.java"


# instance fields
.field private final bucketId:I

.field private final bucketImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final bucketName:Ljava/lang/String;

.field private isCameraBucket:Z

.field private mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    .line 14
    iput p1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketId:I

    .line 15
    iput-object p2, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketName:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->isCameraBucket:Z

    .line 17
    return-void
.end method


# virtual methods
.method public addImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 1
    .param p1, "mediaStoreEntry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public addImageToBeginning(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 2
    .param p1, "mediaStoreEntry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method public getBucketImages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/MediaStoreEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketId:I

    return v0
.end method

.method public getImagesCount()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMediaStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public isCameraBucket()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->isCameraBucket:Z

    return v0
.end method

.method public setCameraBucket(Z)V
    .locals 0
    .param p1, "isCameraBucket"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->isCameraBucket:Z

    .line 37
    return-void
.end method

.method public setMediaStoreEntry(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 0
    .param p1, "mediaStoreEntry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->mediaStoreEntry:Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AlbumEntry{bucketId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bucketName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCameraBucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->isCameraBucket:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bucketImages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/mediastore/AlbumEntry;->bucketImages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
