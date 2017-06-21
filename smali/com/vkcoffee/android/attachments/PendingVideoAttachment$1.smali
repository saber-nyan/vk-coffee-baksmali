.class final Lcom/vkcoffee/android/attachments/PendingVideoAttachment$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "PendingVideoAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/attachments/PendingVideoAttachment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 28
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-object v0
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 32
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment$1;->newArray(I)[Lcom/vkcoffee/android/attachments/PendingVideoAttachment;

    move-result-object v0

    return-object v0
.end method
