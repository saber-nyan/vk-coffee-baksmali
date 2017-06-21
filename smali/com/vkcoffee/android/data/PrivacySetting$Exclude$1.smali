.class final Lcom/vkcoffee/android/data/PrivacySetting$Exclude$1;
.super Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;
.source "PrivacySetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter",
        "<",
        "Lcom/vkcoffee/android/data/PrivacySetting$Exclude;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$CreatorAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    .locals 2
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 353
    new-instance v0, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude;-><init>(Lcom/vkcoffee/android/utils/Serializer;Lcom/vkcoffee/android/data/PrivacySetting$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude$1;->createFromSerializer(Lcom/vkcoffee/android/utils/Serializer;)Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vkcoffee/android/data/PrivacySetting$Exclude;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 357
    new-array v0, p1, [Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/data/PrivacySetting$Exclude$1;->newArray(I)[Lcom/vkcoffee/android/data/PrivacySetting$Exclude;

    move-result-object v0

    return-object v0
.end method
