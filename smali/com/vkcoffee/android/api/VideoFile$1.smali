.class final Lcom/vkcoffee/android/api/VideoFile$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "VideoFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/VideoFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/api/VideoFile;
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 198
    new-instance v0, Lcom/vkcoffee/android/api/VideoFile;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/VideoFile;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-object v0
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/VideoFile$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/api/VideoFile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 202
    new-array v0, p1, [Lcom/vkcoffee/android/api/VideoFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/api/VideoFile$1;->newArray(I)[Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    return-object v0
.end method
