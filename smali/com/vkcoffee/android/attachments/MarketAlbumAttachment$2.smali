.class final Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$2;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "MarketAlbumAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;
    .locals 2
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 108
    new-instance v1, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;

    const-class v0, Lcom/vkcoffee/android/data/GoodAlbum;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GoodAlbum;

    invoke-direct {v1, v0}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;-><init>(Lcom/vkcoffee/android/data/GoodAlbum;)V

    return-object v1
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$2;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 112
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment$2;->newArray(I)[Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;

    move-result-object v0

    return-object v0
.end method
