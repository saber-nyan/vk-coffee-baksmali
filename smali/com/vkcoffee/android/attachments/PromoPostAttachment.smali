.class public Lcom/vkcoffee/android/attachments/PromoPostAttachment;
.super Lcom/vkcoffee/android/attachments/PostAttachment;
.source "PromoPostAttachment.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/PromoPostAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/vkcoffee/android/attachments/PromoPostAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PromoPostAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PromoPostAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PostAttachment;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    .line 11
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wall_ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PromoPostAttachment;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PromoPostAttachment;->post:Lcom/vkcoffee/android/NewsEntry;

    iget v1, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
