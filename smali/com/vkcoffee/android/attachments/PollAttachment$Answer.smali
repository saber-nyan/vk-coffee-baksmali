.class public Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "PollAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/attachments/PollAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Answer"
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;


# instance fields
.field public id:I

.field public rate:F

.field public text:Ljava/lang/String;

.field public votes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PollAttachment$Answer$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    .line 400
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 410
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    .line 411
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    .line 413
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    .line 414
    return-void
.end method


# virtual methods
.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 417
    iget v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 419
    iget v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 420
    iget v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeFloat(F)V

    .line 421
    return-void
.end method
