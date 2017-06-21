.class Lcom/vkcoffee/android/attachments/PollAttachment$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "PollAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/PollAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/PollAttachment;
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 42
    new-instance v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-object v0
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/attachments/PollAttachment;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/attachments/PollAttachment;
    .locals 1
    .param p1, "var1"    # I

    .prologue
    .line 45
    new-array v0, p1, [Lcom/vkcoffee/android/attachments/PollAttachment;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$1;->newArray(I)[Lcom/vkcoffee/android/attachments/PollAttachment;

    move-result-object v0

    return-object v0
.end method
